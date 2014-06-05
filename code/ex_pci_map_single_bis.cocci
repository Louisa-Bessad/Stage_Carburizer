@@
expression E1, E2, E3, E4;
@@

- pci_map_single(E1,
+ dma_map_single(&E1->dev,
  E2, E3, E4)

@@
expression E1, E2, E3;
@@

dma_map_single(E1, E2, E3,
(
- PCI_MAP_BIDIRECTIONAL
+ DMA_BIDIRECTIONAL
|
- PCI_MAP_TODEVICE
+ DMA_TODEVICE
|
- PCI_MAP_FROMDEVICE
+ DMA_FROMDEVICE
|
- PCI_MAP_NON
+ DMA_NONE
)
	)