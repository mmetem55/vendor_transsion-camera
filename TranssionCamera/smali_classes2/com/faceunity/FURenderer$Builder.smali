.class public Lcom/faceunity/FURenderer$Builder;
.super Ljava/lang/Object;
.source "FURenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/FURenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cameraFacing:I

.field private final context:Landroid/content/Context;

.field private createEGLContext:Z

.field private defaultEffect:Lcom/faceunity/entity/Effect;

.field private externalInputType:I

.field private inputImageFormat:I

.field private inputOrientation:I

.field private inputTextureType:I

.field private isNeedAnimoji3D:Z

.field private isNeedBeautyHair:Z

.field private isNeedBodySlim:Z

.field private isNeedFaceBeauty:Z

.field private isNeedPosterFace:Z

.field private mIsLoadAiHandProcessor:Z

.field private mIsLoadAiHumanProcessor:Z

.field private maxFaces:I

.field private maxHumans:I

.field public onBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public onFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public onSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public onTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2151
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$Builder;->createEGLContext:Z

    const/4 v1, 0x4

    .line 2153
    iput v1, p0, Lcom/faceunity/FURenderer$Builder;->maxFaces:I

    const/4 v1, 0x1

    .line 2154
    iput v1, p0, Lcom/faceunity/FURenderer$Builder;->maxHumans:I

    .line 2156
    iput v0, p0, Lcom/faceunity/FURenderer$Builder;->inputTextureType:I

    .line 2157
    iput v0, p0, Lcom/faceunity/FURenderer$Builder;->inputImageFormat:I

    const/16 v2, 0x10e

    .line 2158
    iput v2, p0, Lcom/faceunity/FURenderer$Builder;->inputOrientation:I

    const/4 v2, -0x1

    .line 2159
    iput v2, p0, Lcom/faceunity/FURenderer$Builder;->externalInputType:I

    .line 2160
    iput-boolean v1, p0, Lcom/faceunity/FURenderer$Builder;->isNeedFaceBeauty:Z

    .line 2161
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$Builder;->isNeedAnimoji3D:Z

    .line 2162
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$Builder;->isNeedBeautyHair:Z

    .line 2163
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$Builder;->isNeedPosterFace:Z

    .line 2164
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$Builder;->isNeedBodySlim:Z

    .line 2165
    iput v1, p0, Lcom/faceunity/FURenderer$Builder;->cameraFacing:I

    .line 2175
    iput-object p1, p0, Lcom/faceunity/FURenderer$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/faceunity/FURenderer;
    .locals 3

    .line 2347
    new-instance v0, Lcom/faceunity/FURenderer;

    iget-object v1, p0, Lcom/faceunity/FURenderer$Builder;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/faceunity/FURenderer$Builder;->createEGLContext:Z

    invoke-direct {v0, v1, v2}, Lcom/faceunity/FURenderer;-><init>(Landroid/content/Context;Z)V

    .line 2348
    iget v1, p0, Lcom/faceunity/FURenderer$Builder;->maxFaces:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$702(Lcom/faceunity/FURenderer;I)I

    .line 2349
    iget v1, p0, Lcom/faceunity/FURenderer$Builder;->maxHumans:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$302(Lcom/faceunity/FURenderer;I)I

    .line 2350
    iget v1, p0, Lcom/faceunity/FURenderer$Builder;->inputTextureType:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4002(Lcom/faceunity/FURenderer;I)I

    .line 2351
    iget v1, p0, Lcom/faceunity/FURenderer$Builder;->inputImageFormat:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4102(Lcom/faceunity/FURenderer;I)I

    .line 2352
    iget v1, p0, Lcom/faceunity/FURenderer$Builder;->inputOrientation:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$902(Lcom/faceunity/FURenderer;I)I

    .line 2353
    iget v1, p0, Lcom/faceunity/FURenderer$Builder;->externalInputType:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4202(Lcom/faceunity/FURenderer;I)I

    .line 2354
    iget-object v1, p0, Lcom/faceunity/FURenderer$Builder;->defaultEffect:Lcom/faceunity/entity/Effect;

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;

    .line 2355
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$Builder;->isNeedFaceBeauty:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4302(Lcom/faceunity/FURenderer;Z)Z

    .line 2356
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$Builder;->isNeedBodySlim:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4402(Lcom/faceunity/FURenderer;Z)Z

    .line 2357
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$Builder;->isNeedAnimoji3D:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4502(Lcom/faceunity/FURenderer;Z)Z

    .line 2358
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$Builder;->isNeedBeautyHair:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4602(Lcom/faceunity/FURenderer;Z)Z

    .line 2359
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$Builder;->isNeedPosterFace:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4702(Lcom/faceunity/FURenderer;Z)Z

    .line 2360
    iget v1, p0, Lcom/faceunity/FURenderer$Builder;->cameraFacing:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$802(Lcom/faceunity/FURenderer;I)I

    .line 2361
    iget-object v1, p0, Lcom/faceunity/FURenderer$Builder;->onFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

    iput-object v1, v0, Lcom/faceunity/FURenderer;->mOnFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

    .line 2362
    iget-object v1, p0, Lcom/faceunity/FURenderer$Builder;->onTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    iput-object v1, v0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    .line 2363
    iget-object v1, p0, Lcom/faceunity/FURenderer$Builder;->onSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

    iput-object v1, v0, Lcom/faceunity/FURenderer;->mOnSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

    .line 2364
    iget-object v1, p0, Lcom/faceunity/FURenderer$Builder;->onBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4802(Lcom/faceunity/FURenderer;Lcom/vskit/arsdk/portal/ARCallback;)Lcom/vskit/arsdk/portal/ARCallback;

    .line 2365
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$Builder;->mIsLoadAiHandProcessor:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4902(Lcom/faceunity/FURenderer;Z)Z

    .line 2366
    iget-boolean p0, p0, Lcom/faceunity/FURenderer$Builder;->mIsLoadAiHumanProcessor:Z

    invoke-static {v0, p0}, Lcom/faceunity/FURenderer;->access$5002(Lcom/faceunity/FURenderer;Z)Z

    return-object v0
.end method

.method public inputTextureType(I)Lcom/faceunity/FURenderer$Builder;
    .locals 0

    .line 2242
    iput p1, p0, Lcom/faceunity/FURenderer$Builder;->inputTextureType:I

    return-object p0
.end method

.method public setLoadAiHandProcessor(Z)Lcom/faceunity/FURenderer$Builder;
    .locals 0

    .line 2196
    iput-boolean p1, p0, Lcom/faceunity/FURenderer$Builder;->mIsLoadAiHandProcessor:Z

    return-object p0
.end method

.method public setOnBundleLoadCompleteListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;
    .locals 0

    .line 2330
    iput-object p1, p0, Lcom/faceunity/FURenderer$Builder;->onBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method public setOnFUDebugListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;
    .locals 0

    .line 2308
    iput-object p1, p0, Lcom/faceunity/FURenderer$Builder;->onFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method public setOnSystemErrorListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;
    .locals 0

    .line 2342
    iput-object p1, p0, Lcom/faceunity/FURenderer$Builder;->onSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method public setOnTrackingStatusChangedListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;
    .locals 0

    .line 2319
    iput-object p1, p0, Lcom/faceunity/FURenderer$Builder;->onTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method
