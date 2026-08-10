.class public Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;
.super Lcom/transsion/camera/feature/mode/video/node/BaseNode;
.source "MotionDetectNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDetectListener:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;

.field private mDetectState:Z

.field private mFormat:I

.field private mHeight:I

.field private mMotionDetect:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;-><init>()V

    .line 38
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->instance()Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mMotionDetect:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->init()V

    .line 55
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mWidth:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mHeight:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 60
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mDetectState:Z

    .line 61
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mMotionDetect:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mFormat:I

    invoke-interface {v2, v0, v1, p0}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->init(III)Z

    .line 62
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init MotionDetectNode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 6

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process frameNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mDetectState:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mMotionDetect:Z

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mMotionDetect:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    iget-object v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    iget v3, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    iget v4, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    iget v5, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFormat:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->detect([BIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motion detected frameNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mDetectState:Z

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mDetectListener:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;

    if-eqz v0, :cond_0

    .line 83
    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;->onMotionDetected(I)V

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0
.end method

.method public setDetectListener(Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mDetectListener:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;

    return-void
.end method

.method public setFrameInfo(III)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mWidth:I

    .line 47
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mHeight:I

    .line 48
    iput p3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mFormat:I

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->unInit()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mDetectState:Z

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->mMotionDetect:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->unInit()Z

    .line 71
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit MotionDetectNode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
