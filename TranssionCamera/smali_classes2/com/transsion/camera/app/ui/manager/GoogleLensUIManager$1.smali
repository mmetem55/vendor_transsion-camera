.class Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;
.super Ljava/lang/Object;
.source "GoogleLensUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onCameraSwitcherVisibilityChanged(Z)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;)Lcom/transsion/camera/app/ui/IGoogleLensUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;)Lcom/transsion/camera/app/ui/IGoogleLensUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f070246

    .line 187
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0700d6

    .line 189
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 191
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 163
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_camera_dual_switch_button_visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_camera_switcher_visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 176
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, " ignore the unneeded Key directly"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "camera_switcher_show"

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 169
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;->onCameraSwitcherVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "camera_dual_switch_button_show"

    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 173
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;->onCameraSwitcherVisibilityChanged(Z)V

    :goto_0
    return-void
.end method
