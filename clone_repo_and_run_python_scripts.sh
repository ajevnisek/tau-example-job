git clone https://github.com/ajevnisek/pytorch-tutorial-private.git
cd /pytorch-tutorial-private/tutorials/01-basics/feedforward_neural_network

python main.py --hidden_size=$HIDDEN_SIZE
python test_script.py
python finalize_script.py
