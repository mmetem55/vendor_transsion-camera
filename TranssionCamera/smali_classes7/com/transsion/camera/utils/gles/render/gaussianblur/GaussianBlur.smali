.class public Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;
.super Ljava/lang/Object;
.source "GaussianBlur.java"

# interfaces
.implements Lcom/transsion/camera/utils/gles/render/IBlurRender;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

.field private final mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

.field private final mOutputRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;

.field private final mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

.field private final mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mOutputRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->configPrograms()V

    return-void
.end method

.method private calculateSumWeight()F
    .locals 9

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v0, v0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    if-ge v2, v3, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v7, v0

    mul-double/2addr v5, v7

    mul-double/2addr v5, v7

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    mul-int v5, v2, v2

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v0

    mul-float/2addr v6, v0

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v1, v3

    if-eqz v2, :cond_0

    add-float/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private configPrograms()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->setBindFbo(Z)V

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->calculateSumWeight()F

    move-result v0

    .line 45
    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->setBindFbo(Z)V

    .line 46
    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mRatio:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setScaleRatio(I)V

    .line 47
    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setSumWeight(F)V

    .line 48
    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurRadius(I)V

    .line 49
    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurOffset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurOffset(FF)V

    .line 51
    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->setBindFbo(Z)V

    .line 52
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v2, v2, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mRatio:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setScaleRatio(I)V

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setSumWeight(F)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v1, v1, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurRadius(I)V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget p0, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurOffset:I

    int-to-float p0, p0

    invoke-virtual {v0, v4, p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurOffset(FF)V

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->configPrograms()V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->updateTransformMatrix(Landroid/graphics/SurfaceTexture;)V

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {p1, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->draw(III)Z

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->getFboTextureId()I

    move-result p2

    invoke-virtual {p1, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->draw(III)Z

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->getFboTextureId()I

    move-result p2

    invoke-virtual {p1, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->draw(III)Z

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mOutputRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;

    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->getFboTextureId()I

    move-result p0

    invoke-virtual {p1, p0, p3, p4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->draw(III)Z

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mProgramOesTo2D:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onRelease()V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onRelease()V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onRelease()V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;->mOutputRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onRelease()V

    return-void
.end method
