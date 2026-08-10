.class public Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;
.super Ljava/lang/Object;
.source "AbstractSettingItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PopupOptionStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_0

    .line 100
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onPopupBarActionDown()V

    :cond_0
    return-void
.end method

.method public onActionUp()V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_0

    .line 107
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onPopupBarActionUp()V

    :cond_0
    return-void
.end method

.method public onDismiss(Z)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_0

    .line 93
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onPopupBarDissmiss(Z)V

    :cond_0
    return-void
.end method

.method public onOptionIndexChanged(I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 74
    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 76
    aget-object p1, v0, p1

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->access$100(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onPopupBarShow()V

    :cond_0
    return-void
.end method
