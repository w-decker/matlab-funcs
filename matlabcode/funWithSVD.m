function funWithSVD(pic, features, options)
% FUNWITHSVD demonstrating how different features change image
% pic -- image you wish to analyze
% features -- (double) number of features to include in analyzed image (e.g., 1:4)

% Optional
    % 'originalPic' -- ('yes' | 'no') display original picture after SVD. Default 'no'.
    % 'newPic' -- ('yes' | 'no') Display new pic. Default 'yes'.
    
% checks arguments
    arguments
        pic (1, 1) string {mustBeTextScalar}
        features (1, :) double {mustBeNumeric}
        options.originalPic string = 'no'
        options.newPic string = 'yes'
    end

    % begins SVD
    
    image2matrix = double(imread(pic));
    [U, S, V] = svd(image2matrix(:, :, 1));

    newPic = U(:, features)*S(features, features)*V(:, features)';

    % checks output options
    switch options.originalPic
        case 'yes'
            figure(1),
            imshow(pic(:, :, 1));
            colormap gray
    end

    switch options.newPic
        case 'yes'
            figure(2),
            imagesc(newPic);
            colormap gray
        otherwise
            fprintf('...calculating features\n')
            imageMatrix = newPic;
            assignin('base', 'imageMatrix', imageMatrix);
    end
end
