# ddd-robot-sushi

An example repository to represent domain driven design modeling for a robot sushi restaurant

## Overview

### src

This is the location for the language representation of our model. 

The examples are written using the Context Mapper Language (CML) and generated using the VSCode Extension. The language documentation can be found [here](https://contextmapper.org/), and the maintainers also provide a related [repository](https://github.com/ContextMapper/context-mapper-examples) of examples for basic use cases.

### src-gen

This is the location for the generated files from the Context Mapper VSCode Extension.

It is required to have graphviz installed before running the relevant commands.

### Application layer

#### Customer Ordering

The Customer Ordering flow has been defined in  sketched using bpmn sketch miner generator provided by the Context Mapper library.

The flow can be viewed [online with live edit capabilities](https://www.bpmn-sketch-miner.ai/#EYBwNgdgXAbgjAKALRIQeQE4BMCmGCWEA5gAQCCI4+AxgIYAu+A9tAggPTsma4YBKOAI4BXHAGd6JANokkAPhIBlAKoAhALIBJACraAogBEAugjF4YNHEuHAAtvno88CABROMim-fr0cWAJQcXO4CIuKSUioaOvoGsgp8egDCepoAaoYkABokiQBSybEmZhgW1FbUABY41ADW7q4hNTj4MH6BnNzYeKGiEtKJKemZ8uRJKQAKRabmliQYza04DW7dGGTU5SC+AUFdvL3h0mTjelMjCmh8Bnp8APpJiWTTJWVWtJs4241rSQsM7TYnSaYX6MlGUS0ukMxVm5WsdgcK3cnkRPkBwLWhzBkJiF1yyVSGTiOXyhRhM1KcyqNXqax+BxwACsajtAgggA) or as a captured [png](images/customer-order.png).

### Domain layer

#### Services and relationships

The domain models and relationships for the Robot Sushi restaurant have been defined in `src/RobotSushiRestaurant.cml`. This is a simplified representation of an actual restaurant process, and does not include any support for order customization.

We based the design on the results of an event storming session. The output from that session can be viewed [here](images/sushi-restaurant-event-storm.png).
