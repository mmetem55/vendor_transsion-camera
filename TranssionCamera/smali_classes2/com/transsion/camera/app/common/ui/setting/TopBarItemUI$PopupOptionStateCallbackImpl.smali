.class Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;
.super Ljava/lang/Object;
.source "TopBarItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOptionStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;)V
    .locals 0

    .line 635
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    return-void
.end method


# virtual methods
.method public onActionUp()V
    .locals 0

    return-void
.end method

.method public onDismiss(Z)V
    .locals 1

    .line 650
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 651
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1300(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1700(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onOptionIndexChanged(I)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1600(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;I)V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
