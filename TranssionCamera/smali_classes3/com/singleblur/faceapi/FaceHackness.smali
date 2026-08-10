.class public Lcom/singleblur/faceapi/FaceHackness;
.super Lcom/singleblur/faceapi/FaceHandleBase;
.source "FaceHackness.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/singleblur/faceapi/FaceHandleBase;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceCreateHackness(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    return-void
.end method


# virtual methods
.method public faceHackness([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;Lcom/singleblur/faceapi/model/FaceInfo;)F
    .locals 10

    move-object v0, p0

    .line 15
    iget-wide v1, v0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v9, v0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    move-wide v0, v1

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceHackness(J[BIIIIILcom/singleblur/faceapi/model/FaceInfo;[I)F

    move-result v0

    return v0
.end method

.method protected releaseHandle()V
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-static {v0, v1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceDestroyHackness(J)V

    return-void
.end method
