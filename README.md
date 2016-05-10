# CloudSlang-Docker-Image

## Overview & links

CloudSlang is a flow-based orchestration tool for managing your deployed applications.
Rapidly automate your DevOps use cases using ready-made workflows.
It provides Docker capabilities and integrations with Docker eco-system projects.

You can read more on it here : http://www.cloudslang.io/

##Docker Image

There are two CloudSlang Docker images. One (cloudslang/cloudslang) is a
lightweight image meant to get you running CloudSlang flows as quickly as
possible. The other image (cloudslang/cloudslang-dev) adds the tools necessary
to develop CloudSlang flows.

###cloudslang/cloudslang

This image includes:

- Java
- CloudSlang CLI
- CloudSlang content

To get the image: ``docker pull cloudslang/cloudslang``

To run a flow with a CloudSlang prompt:

-  ``docker run -it cloudslang/cloudslang``
-  At the prompt enter: ``run --f ../content/io/cloudslang/.../flow.sl --i input1=value1``

Or, to run the flow without the prompt:

``docker run --rm cloudslang/cloudslang run --f ../content/io/cloudslang/.../flow.sl --i input1=value1``

###cloudslang/cloudslang-dev

This image includes:

- Java
- CloudSlang CLI
- CloudSlang content
- Python
- Pip
- Vim
- Emacs
- SSH
- Git
- Atom
- language-cloudslang Atom package

To get the image: ``docker pull cloudslang/cloudslang-dev``

## Issues & contributions

Feel free to open issues on our GitHub page :
https://github.com/CloudSlang/CloudSlang-Docker-Image/issues

Or contact using our mailing list:
https://groups.google.com/forum/#!forum/cloudslang

For contributing look at:
http://cloudslang-docs.readthedocs.org/en/latest/developer_contribution.html
