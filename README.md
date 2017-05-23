# CloudSlang-Docker-Image

[![Join the chat at https://gitter.im/CloudSlang/CloudSlang-Docker-Image](https://badges.gitter.im/CloudSlang/CloudSlang-Docker-Image.svg)](https://gitter.im/CloudSlang/CloudSlang-Docker-Image?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Overview & links

CloudSlang is a flow-based orchestration tool for managing your deployed applications.
Rapidly automate your DevOps use cases using ready-made workflows.
It provides Docker capabilities and integrations with Docker eco-system projects.

You can read more on it here : http://www.cloudslang.io/

## Docker Image

There are two CloudSlang Docker images. One (cloudslang/cloudslang) is a
lightweight image meant to get you running CloudSlang flows as quickly as
possible. The other image (cloudslang/cloudslang-dev) adds the tools necessary
to develop CloudSlang flows.

### cloudslang/cloudslang

This image includes:

- Java
- CloudSlang CLI
- CloudSlang content

To get the image: ``docker pull cloudslang/cloudslang``

To run a flow with a CloudSlang prompt:

-  ``docker run -it cloudslang/cloudslang``
-  At the prompt enter: ``run --f ../content/io/cloudslang/base/print/print_text.sl --i text=Hi``

Or, to run the flow without the prompt:

``docker run --rm cloudslang/cloudslang run --f ../content/io/cloudslang/base/print/print_text.sl --i text=Hi``

### cloudslang/cloudslang-dev

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

Feel free to join us on Slack:
https://cloudslang.signup.team/

For contributing look at:
http://cloudslang-docs.readthedocs.org/en/latest/developer_contribution.html
