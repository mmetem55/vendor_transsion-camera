.class public Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;
.super Ljava/lang/Object;
.source "FaceFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/FaceFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceFittingResult"
.end annotation


# instance fields
.field config:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;

.field faceCount:I

.field faceFittingMeshInfo:[Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;->config:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;

    .line 214
    iput-object v0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;->faceFittingMeshInfo:[Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;->config:Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshConfig;

    return-object p0
.end method

.method public getFaceCount()I
    .locals 0

    .line 222
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;->faceCount:I

    return p0
.end method

.method public getFaceFittingMeshInfo()[Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingResult;->faceFittingMeshInfo:[Lcom/bytedance/labcv/effectsdk/FaceFitting$FaceFittingMeshInfo;

    return-object p0
.end method
