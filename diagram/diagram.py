# diagram.py
# Needs diagrams from pip and graphwiz installed

from diagrams import Diagram, Cluster
from diagrams.aws.security import WAF

with Diagram("waf-regional", show=False):
          WAF("Regional")
