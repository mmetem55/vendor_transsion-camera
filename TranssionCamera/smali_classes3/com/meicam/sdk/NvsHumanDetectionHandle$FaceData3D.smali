.class public Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;
.super Ljava/lang/Object;
.source "NvsHumanDetectionHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsHumanDetectionHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceData3D"
.end annotation


# instance fields
.field private rot:Lcom/meicam/sdk/NvsPosition3D;

.field private trans:Lcom/meicam/sdk/NvsPosition3D;

.field private vertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsPosition3D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRot()Lcom/meicam/sdk/NvsPosition3D;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;->rot:Lcom/meicam/sdk/NvsPosition3D;

    return-object p0
.end method

.method public getTrans()Lcom/meicam/sdk/NvsPosition3D;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;->trans:Lcom/meicam/sdk/NvsPosition3D;

    return-object p0
.end method

.method public getVertices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsPosition3D;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;->vertices:Ljava/util/List;

    return-object p0
.end method

.method public setRot(Lcom/meicam/sdk/NvsPosition3D;)V
    .locals 3

    .line 247
    new-instance v0, Lcom/meicam/sdk/NvsPosition3D;

    iget v1, p1, Lcom/meicam/sdk/NvsPosition3D;->x:F

    iget v2, p1, Lcom/meicam/sdk/NvsPosition3D;->y:F

    iget p1, p1, Lcom/meicam/sdk/NvsPosition3D;->z:F

    invoke-direct {v0, v1, v2, p1}, Lcom/meicam/sdk/NvsPosition3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;->rot:Lcom/meicam/sdk/NvsPosition3D;

    return-void
.end method

.method public setTrans(Lcom/meicam/sdk/NvsPosition3D;)V
    .locals 3

    .line 237
    new-instance v0, Lcom/meicam/sdk/NvsPosition3D;

    iget v1, p1, Lcom/meicam/sdk/NvsPosition3D;->x:F

    iget v2, p1, Lcom/meicam/sdk/NvsPosition3D;->y:F

    iget p1, p1, Lcom/meicam/sdk/NvsPosition3D;->z:F

    invoke-direct {v0, v1, v2, p1}, Lcom/meicam/sdk/NvsPosition3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;->trans:Lcom/meicam/sdk/NvsPosition3D;

    return-void
.end method

.method public setVertices(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsPosition3D;",
            ">;)V"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/meicam/sdk/NvsHumanDetectionHandle$FaceData3D;->vertices:Ljava/util/List;

    return-void
.end method
