function tests = histthresh_Test    
    tests = functiontests(localfunctions);
end

function th_concavity_test(testCase)
    I=imread('cameraman.tif');
    T = th_concavity(I);
    verifyEqual(testCase,T,145);
end

function th_entropy_test(testCase)
    I=imread('cameraman.tif');
    T = th_entropy(I);
    verifyEqual(testCase,T,192);
end

function th_intermeans_test(testCase)
    I=imread('cameraman.tif');
    T = th_intermeans(I);
    verifyEqual(testCase,T,88);
end

function th_intermeans_iter_test(testCase)
    I=imread('cameraman.tif');
    T = th_intermeans_iter(I);
    verifyEqual(testCase,T,88);
end

function th_intermodes_test(testCase)
    I=imread('cameraman.tif');
    T = th_intermodes(I);
    verifyEqual(testCase,T,89);
end

function th_maxlik_test(testCase)
    I=imread('cameraman.tif');
    T = th_maxlik(I);
    verifyEqual(testCase,T,23);
end

function th_mean_test(testCase)
    I=imread('cameraman.tif');
    T = th_mean(I);
    verifyEqual(testCase,T,118);
end

function th_median_test(testCase)
    I=imread('cameraman.tif');
    T = th_median(I);
    verifyEqual(testCase,T,143);
end

function th_minerror_test(testCase)
    I=imread('cameraman.tif');
    T = th_minerror(I);
    verifyEqual(testCase,T,24);
end

function th_minerror_iter_test(testCase)
    I=imread('cameraman.tif');
    T = th_minerror_iter(I);
    verifyEqual(testCase,T,23);
end

function th_minimum_test(testCase)
    I=imread('cameraman.tif');
    T = th_minimum(I);
    verifyEqual(testCase,T,76);
end

function th_moments_test(testCase)
    I=imread('cameraman.tif');
    T = th_moments(I);
    verifyEqual(testCase,T,112);
end

function th_ptile_test(testCase)
    I=imread('cameraman.tif');
    T = th_ptile(I);
    verifyEqual(testCase,T,143);
end