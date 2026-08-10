.class public Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;
.super Ljava/lang/Object;
.source "FaceFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/FaceFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceFittingMeshConfig"
.end annotation


# instance fields
.field flist:[S

.field flist_count:I

.field landmark_triangle:[S

.field landmark_triangle_count:I

.field mum_landmark:I

.field num_flist:I

.field num_landmark_triangle:I

.field num_param:I

.field num_vertex:I

.field uv:[F

.field uv_count:I

.field version_code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlist()[S
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->flist:[S

    return-object p0
.end method

.method public getFlist_count()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->flist_count:I

    return p0
.end method

.method public getLandmark_triangle()[S
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->landmark_triangle:[S

    return-object p0
.end method

.method public getLandmark_triangle_count()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->landmark_triangle_count:I

    return p0
.end method

.method public getMum_landmark()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->mum_landmark:I

    return p0
.end method

.method public getNum_flist()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->num_flist:I

    return p0
.end method

.method public getNum_landmark_triangle()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->num_landmark_triangle:I

    return p0
.end method

.method public getNum_param()I
    .locals 0

    .line 193
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->num_param:I

    return p0
.end method

.method public getNum_vertex()I
    .locals 0

    .line 177
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->num_vertex:I

    return p0
.end method

.method public getUv()[F
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->uv:[F

    return-object p0
.end method

.method public getUv_count()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->uv_count:I

    return p0
.end method

.method public getVersion_code()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;->version_code:I

    return p0
.end method
