.class public Lcom/transsion/camera/app/SpecifyModePolicy;
.super Ljava/lang/Object;
.source "SpecifyModePolicy.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUIRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mIntent:Lcom/transsion/camera/app/intent/IntentParser;

.field private mIntentActionDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SpecifyModePolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SpecifyModePolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntentActionDone:Z

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    .line 24
    iput-object p3, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntent:Lcom/transsion/camera/app/intent/IntentParser;

    return-void
.end method


# virtual methods
.method public doActionAfterPreviewStarted()V
    .locals 7

    .line 28
    iget-boolean v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntentActionDone:Z

    if-eqz v0, :cond_0

    .line 29
    sget-object p0, Lcom/transsion/camera/app/SpecifyModePolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doActionAfterPreviewStarted return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntentActionDone:Z

    const/4 v0, -0x1

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mIntent:Lcom/transsion/camera/app/intent/IntentParser;

    iget-boolean v4, v3, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySlimBody:Z

    const-string v5, "id"

    if-eqz v4, :cond_1

    const-string v0, "slimbody_bar"

    .line 37
    invoke-virtual {v2, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 38
    :cond_1
    iget-boolean v4, v3, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFaceBeauty:Z

    const-string v6, "face_beauty_bar"

    if-eqz v4, :cond_2

    .line 39
    invoke-virtual {v2, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v4, v3, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideo:Z

    if-eqz v4, :cond_3

    .line 41
    invoke-virtual {v2, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 42
    :cond_3
    iget-boolean v4, v3, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokeh:Z

    if-eqz v4, :cond_4

    const-string v0, "level_indicator_layout"

    .line 43
    invoke-virtual {v2, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 44
    :cond_4
    iget-boolean v4, v3, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeauty:Z

    if-eqz v4, :cond_5

    const-string v0, "face_beauty_v2_switch_icon"

    .line 45
    invoke-virtual {v2, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 46
    :cond_5
    iget-boolean v4, v3, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideo:Z

    if-eqz v4, :cond_6

    .line 47
    invoke-virtual {v2, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 48
    :cond_6
    iget-boolean v3, v3, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySettingVideoPortrait:Z

    if-eqz v3, :cond_7

    const-string v0, "setting_ui_item_video_portrait"

    .line 49
    invoke-virtual {v2, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/SpecifyModePolicy;->mAppUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_8
    return-void
.end method
