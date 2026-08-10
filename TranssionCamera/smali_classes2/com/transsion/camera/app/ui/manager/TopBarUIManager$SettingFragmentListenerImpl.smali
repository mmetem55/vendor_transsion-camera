.class Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;
.super Ljava/lang/Object;
.source "TopBarUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/TopBarUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingFragmentListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;->onSettingClicked()V

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    return-void
.end method
