.class public Lcom/transsion/voicecamera/sdk/TransVCConfig;
.super Ljava/lang/Object;
.source "TransVCConfig.java"


# instance fields
.field private LANG:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

.field private mInternalStoragePath:Ljava/lang/String;

.field private mResultPublishPath:Ljava/lang/String;

.field private mResultPublishSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_ENGLISH:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->LANG:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    return-void
.end method


# virtual methods
.method public getInternalStoragePath()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mInternalStoragePath:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Lcom/transsion/voicecamera/sdk/utils/LangEnum;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->LANG:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    return-object p0
.end method

.method public getResultPublishPath()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishPath:Ljava/lang/String;

    return-object p0
.end method

.method public getResultPublishSwitch()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishSwitch:Z

    return p0
.end method

.method public reset()V
    .locals 2

    .line 27
    sget-object v0, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_NONE:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->LANG:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mInternalStoragePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishSwitch:Z

    .line 30
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishPath:Ljava/lang/String;

    return-void
.end method

.method public setConfig(Lcom/transsion/voicecamera/sdk/TransVCConfig;)V
    .locals 1

    .line 20
    iget-object v0, p1, Lcom/transsion/voicecamera/sdk/TransVCConfig;->LANG:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->LANG:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    .line 21
    iget-object v0, p1, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mInternalStoragePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mInternalStoragePath:Ljava/lang/String;

    .line 22
    iget-boolean v0, p1, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishSwitch:Z

    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishSwitch:Z

    .line 23
    iget-object p1, p1, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishPath:Ljava/lang/String;

    return-void
.end method

.method public setInternalStoragePath(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mInternalStoragePath:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Lcom/transsion/voicecamera/sdk/utils/LangEnum;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->LANG:Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    return-void
.end method

.method public setResultPublishPath(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishPath:Ljava/lang/String;

    return-void
.end method

.method public setResultPublishSwitch(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/voicecamera/sdk/TransVCConfig;->mResultPublishSwitch:Z

    return-void
.end method
