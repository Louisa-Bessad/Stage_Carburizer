@@
struct pci_dev *E1;
expression E2, E3;
@@

-dma_map_single(&E1->dev,
+pci_map_single(E1,
	E2, E3,
(
-DMA_BIDIRECTIONAL
+PCI_DMA_BIDIRECTIONAL
|
-DMA_TO_DEVICE
+PCI_DMA_TODEVICE
|
-DMA_FROM_DEVICE
+PCI_DMA_FROMDEVICE
|
-DMA_NONE_DEVICE
+PCI_DMA_NONE
)
	)