.class public Lcom/bytedance/labcv/core/opengl/ProgramManager;
.super Ljava/lang/Object;
.source "ProgramManager.java"


# instance fields
.field private mProgramTexture2D:Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;

.field private mProgramTextureOES:Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;
    .locals 1

    .line 15
    sget-object v0, Lcom/bytedance/labcv/core/opengl/ProgramManager$1;->$SwitchMap$com$bytedance$labcv$effectsdk$BytedEffectConstants$TextureFormat:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTextureOES:Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;

    if-nez p1, :cond_1

    .line 23
    new-instance p1, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;

    invoke-direct {p1}, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;-><init>()V

    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTextureOES:Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTextureOES:Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;

    return-object p0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTexture2D:Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;

    if-nez p1, :cond_3

    .line 18
    new-instance p1, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;

    invoke-direct {p1}, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTexture2D:Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;

    .line 20
    :cond_3
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTexture2D:Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTexture2D:Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/bytedance/labcv/core/opengl/Program;->release()V

    .line 33
    iput-object v1, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTexture2D:Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTextureOES:Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/bytedance/labcv/core/opengl/Program;->release()V

    .line 38
    iput-object v1, p0, Lcom/bytedance/labcv/core/opengl/ProgramManager;->mProgramTextureOES:Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;

    :cond_1
    return-void
.end method
