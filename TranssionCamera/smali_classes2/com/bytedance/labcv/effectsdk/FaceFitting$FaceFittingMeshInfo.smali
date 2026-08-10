.class public Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;
.super Ljava/lang/Object;
.source "FaceFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/FaceFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceFittingMeshInfo"
.end annotation


# instance fields
.field bitangent:[F

.field id:I

.field landmark:[F

.field landmark_count:I

.field model:[F

.field mvp:[F

.field normal:[F

.field param:[F

.field param_count:I

.field rvec:[F

.field tangent:[F

.field tvec:[F

.field vertex:[F

.field vertex_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitangent()[F
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->bitangent:[F

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->id:I

    return p0
.end method

.method public getLandmark()[F
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->landmark:[F

    return-object p0
.end method

.method public getLandmark_count()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->landmark_count:I

    return p0
.end method

.method public getModel()[F
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->model:[F

    return-object p0
.end method

.method public getMvp()[F
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->mvp:[F

    return-object p0
.end method

.method public getNormal()[F
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->normal:[F

    return-object p0
.end method

.method public getParam()[F
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->param:[F

    return-object p0
.end method

.method public getParam_count()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->param_count:I

    return p0
.end method

.method public getRvec()[F
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->rvec:[F

    return-object p0
.end method

.method public getTangent()[F
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->tangent:[F

    return-object p0
.end method

.method public getTvec()[F
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->tvec:[F

    return-object p0
.end method

.method public getVertex()[F
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->vertex:[F

    return-object p0
.end method

.method public getVertex_count()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;->vertex_count:I

    return p0
.end method
