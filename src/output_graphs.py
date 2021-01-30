"""
Author: jiaying.lu@emory.edu
Output graphs in sequence so that can be compared
"""

import sys
sys.path.append('./')
import argparse
import os.path as osp
import networkx as nx
from datetime import timedelta
import matplotlib.pyplot as plt

from src.utils import *
from src.models import *
from src.dataset import Dataset

import random
import numpy as np
import torch as th
from torchtext import data, datasets


if __name__ == '__main__':
    # args need to be set !!
    dataset = 'nyt'
    checkpoint_path = 'log/nyt_NetGen__Jan_07_14-28-41/NetGen.bin'
    seed = 27
    graph_out_path = 'log/nyt_NetGen__Jan_07_14-28-41'

    random.seed(seed)
    np.random.seed(seed)
    th.manual_seed(seed)
    # env args
    dir_path = os.path.dirname(os.path.realpath(__file__))
    parent_path = os.path.abspath(os.path.join(dir_path, os.pardir))
    data_file = os.path.join(parent_path, f'data/{dataset}.txt')
    embed_dim = 100
    split_ratio = 0.8
    n_node = 10
    h_dim = 100
    z_dim = 100
    teacher_forcing = 1
    device = 'cuda:0'

    # load corpus
    dataset = Dataset(emb_dim=embed_dim, data_file=data_file, split_ratio=split_ratio,
                      include_all=True)
    all_iter = data.BucketIterator(
            dataset.all, batch_size=128, device=device, shuffle=False, repeat=False
    )
    print('dataset all len:', len(dataset.all))    # all examples in sequence
    # load model
    model = NetGen(n_node, dataset.n_vocab, dataset.n_labels, embed_dim, h_dim, z_dim,
                   pretrained_embeddings=None, freeze_embeddings=False, teacher_forcing=teacher_forcing,
                   device=device)
    model.load_state_dict(th.load(checkpoint_path))
    print('model load successfully')
    model.output_graph(dataset, all_iter, save_path=graph_out_path, save_name='all')
