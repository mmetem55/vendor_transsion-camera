.class Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 2905
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V
    .locals 0

    .line 2905
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onSettingClicked()V
    .locals 1

    .line 2908
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_0

    .line 2909
    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$3500(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    :cond_0
    return-void
.end method
