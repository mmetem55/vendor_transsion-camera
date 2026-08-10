.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$7;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventRun(I)V
    .locals 2

    .line 305
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/feature/arcore/R$bool;->arcore_is_d9000_sdk:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    const-string p0, "head_rot_delta_x"

    .line 307
    invoke-static {p1, p0, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 308
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "fuItemSetParam \u62ac\u5934"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
