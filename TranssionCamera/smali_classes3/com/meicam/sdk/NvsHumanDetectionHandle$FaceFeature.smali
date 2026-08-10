.class public Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;
.super Ljava/lang/Object;
.source "NvsHumanDetectionHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsHumanDetectionHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceFeature"
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private avatarExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private faceData2D:Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;

.field private faceData3D:Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;

.field private faceId:I

.field private score:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FaceData2D()Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->faceData2D:Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;

    return-object p0
.end method

.method public FaceData3D()Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->faceData3D:Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;

    return-object p0
.end method

.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->actions:Ljava/util/List;

    return-object p0
.end method

.method public getAvatarExpressions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->avatarExpressions:Ljava/util/List;

    return-object p0
.end method

.method public getFaceId()I
    .locals 0

    .line 272
    iget p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->faceId:I

    return p0
.end method

.method public getScore()F
    .locals 0

    .line 282
    iget p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->score:F

    return p0
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->actions:Ljava/util/List;

    return-void
.end method

.method public setAvatarExpressions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->avatarExpressions:Ljava/util/List;

    return-void
.end method

.method public setFaceData2D(Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;)V
    .locals 1

    .line 287
    new-instance v0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->faceData2D:Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData2D;

    return-void
.end method

.method public setFaceData3D(Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;)V
    .locals 1

    .line 298
    new-instance v0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->faceData3D:Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;

    return-void
.end method

.method public setFaceId(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->faceId:I

    return-void
.end method

.method public setScore(F)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceFeature;->score:F

    return-void
.end method
