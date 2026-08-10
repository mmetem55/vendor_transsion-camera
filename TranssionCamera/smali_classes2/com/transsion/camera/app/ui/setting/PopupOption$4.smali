.class Lcom/transsion/camera/app/ui/setting/PopupOption$4;
.super Ljava/lang/Object;
.source "PopupOption.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;->showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1100(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$4;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissEnd()V

    :cond_0
    return-void
.end method
