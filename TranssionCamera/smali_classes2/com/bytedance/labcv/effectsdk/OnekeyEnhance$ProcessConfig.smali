.class public Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;
.super Ljava/lang/Object;
.source "OnekeyEnhance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/OnekeyEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessConfig"
.end annotation


# instance fields
.field cvDetectFrames:I

.field faceList:[Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;

.field faceNum:I

.field height:I

.field initDecayFrames:I

.field isFirstFrame:Z

.field isProtectFace:Z

.field iso:I

.field iso_max:I

.field iso_min:I

.field width:I


# direct methods
.method public constructor <init>(IIIIIIZZII[Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso:I

    .line 80
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_max:I

    .line 81
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_min:I

    .line 82
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->cvDetectFrames:I

    .line 83
    iput p5, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->width:I

    .line 84
    iput p6, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->height:I

    .line 85
    iput-boolean p7, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isFirstFrame:Z

    .line 86
    iput-boolean p8, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isProtectFace:Z

    .line 87
    iput p9, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->initDecayFrames:I

    .line 88
    iput p10, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceNum:I

    .line 89
    iput-object p11, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceList:[Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;

    return-void
.end method


# virtual methods
.method public getCvDetectFrames()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->cvDetectFrames:I

    return p0
.end method

.method public getFaceList()[Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceList:[Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;

    return-object p0
.end method

.method public getFaceNum()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceNum:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->height:I

    return p0
.end method

.method public getInitDecayFrames()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->initDecayFrames:I

    return p0
.end method

.method public getIso()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso:I

    return p0
.end method

.method public getIso_max()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_max:I

    return p0
.end method

.method public getIso_min()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_min:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 125
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->width:I

    return p0
.end method

.method public isFirstFrame()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isFirstFrame:Z

    return p0
.end method

.method public isProtectFace()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isProtectFace:Z

    return p0
.end method

.method public setCvDetectFrames(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->cvDetectFrames:I

    return-void
.end method

.method public setFaceList([Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceList:[Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$FaceRect;

    return-void
.end method

.method public setFaceNum(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceNum:I

    return-void
.end method

.method public setFirstFrame(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isFirstFrame:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->height:I

    return-void
.end method

.method public setInitDecayFrames(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->initDecayFrames:I

    return-void
.end method

.method public setIso(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso:I

    return-void
.end method

.method public setIso_max(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_max:I

    return-void
.end method

.method public setIso_min(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_min:I

    return-void
.end method

.method public setProtectFace(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isProtectFace:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->width:I

    return-void
.end method
