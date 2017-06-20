import coremltools


caffe_model = ('oxford102.caffemodel', 'deploy.prototxt')

labels = 'list.txt'

coreml_model = coremltools.converters.caffe.convert(
	caffe_model, 
	class_labels=labels, 
	image_input_names='data'
)


coreml_model.author = 'Gael Foppolo'
coreml_model.license = 'MIT'
coreml_model.short_description = "Guess the flower type"

coreml_model.input_description['data'] = 'Input image to be classified'

coreml_model.output_description['prob'] = 'Probability of each flower'
coreml_model.output_description['classLabel'] = 'Most likely flower on the image'

coreml_model.save('FlowerClassifier.mlmodel')