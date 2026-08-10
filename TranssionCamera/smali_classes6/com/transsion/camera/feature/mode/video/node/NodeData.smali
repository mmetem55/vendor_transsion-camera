.class public Lcom/transsion/camera/feature/mode/video/node/NodeData;
.super Ljava/lang/Object;
.source "NodeData.java"


# instance fields
.field public mData:[B

.field public mFormat:I

.field public mFrameNumber:I

.field public mHeight:I

.field public mKeepFrame:Z

.field public mMotionDetect:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(IIII[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 26
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    .line 27
    iput p3, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    .line 28
    iput p4, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFormat:I

    .line 29
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    return-void
.end method

.method public constructor <init>(IIII[BZZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 35
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    .line 36
    iput p3, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    .line 37
    iput p4, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFormat:I

    .line 38
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    .line 39
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mMotionDetect:Z

    .line 40
    iput-boolean p7, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mKeepFrame:Z

    return-void
.end method
