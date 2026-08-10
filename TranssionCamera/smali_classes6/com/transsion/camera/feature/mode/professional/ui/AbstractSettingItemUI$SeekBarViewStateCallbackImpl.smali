.class public Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;
.super Ljava/lang/Object;
.source "AbstractSettingItemUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarViewStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onSeekBarActionDown()V

    :cond_0
    return-void
.end method

.method public onActionUp()V
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 139
    invoke-interface {p0, v0, v0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onSeekBarActionUp(ZZZ)V

    :cond_0
    return-void
.end method

.method public onDismissed(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 124
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onSeekBarValueChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    const/4 p1, 0x1

    invoke-static {p0, p2, p1, p3}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->access$100(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method
