.class public abstract Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.super Ljava/lang/Object;
.source "AbstractSettingItemUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;,
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;,
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;,
        Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;
    }
.end annotation


# static fields
.field private static final CLICK_INTERVAL:J = 0x190L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mCurrentEntryValue:Ljava/lang/String;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEnable:Z

.field protected mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

.field private mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

.field private mIsSeekBar:Z

.field protected mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

.field private mLastClick:J

.field protected mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

.field protected mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$2cwRsAt8gj8rxs0LQCZOMi7odmI(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->lambda$setupEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractSettingItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastClick:J

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEnable:Z

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Ljava/lang/String;ZZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->doOnValueChanged(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private createSupportEntries()Z
    .locals 5

    .line 194
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 196
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 203
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 205
    array-length v0, v0

    if-nez v0, :cond_1

    .line 206
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private doOnValueChanged(Ljava/lang/String;ZZ)V
    .locals 1

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 181
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_0

    .line 182
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-interface {p2, v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onItemValueChange(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    .line 189
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->updateEntryView(Ljava/lang/String;Z)V

    return-void
.end method

.method private fastClick()Z
    .locals 4

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 285
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mLastClick:J

    const/4 p0, 0x0

    return p0
.end method

.method private getSettingValue()Ljava/lang/String;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setupEntryView$0(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    .line 299
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mEntryView is null when clicked"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->fastClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ignore fast click!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz v0, :cond_2

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onItemClickBefore(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 310
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 311
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v1, :cond_3

    .line 313
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopupWithoutAnimation()V

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->showIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;)Z

    move-result v2

    goto :goto_0

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz v1, :cond_5

    .line 319
    invoke-interface {v1, v2, v2, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onSeekBarActionUp(ZZZ)V

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 322
    array-length v1, v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    if-eqz v1, :cond_6

    .line 323
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;)Z

    move-result v2

    :cond_6
    :goto_0
    const/4 v1, 0x0

    if-eqz v2, :cond_7

    .line 329
    move-object v3, p1

    check-cast v3, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_highlight:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 330
    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    .line 331
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->updateEntryView(Ljava/lang/String;Z)V

    goto :goto_1

    .line 333
    :cond_7
    move-object v3, p1

    check-cast v3, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    sget v4, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_normal:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 334
    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz v0, :cond_8

    .line 338
    check-cast p1, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    invoke-interface {v0, p1, p0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onItemClick(Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;ZZ)V

    :cond_8
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 245
    instance-of p2, p1, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p2, :cond_0

    .line 246
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    .line 247
    invoke-interface {p2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setEnabled(Z)V

    goto :goto_0

    .line 249
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "SettingItem view must be implements IEntryViemw."

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public abstract synthetic notifyCameraOperateAction(I)V
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 445
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 447
    sget-object p1, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceSetting is null! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 453
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 461
    array-length v0, p1

    if-lez v0, :cond_2

    .line 462
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 464
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 469
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_4

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_0

    .line 474
    :cond_4
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_0

    .line 359
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setEntryViewAnim(Landroid/view/View;I)V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 149
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    new-array v1, v0, [F

    int-to-float p2, p2

    const/4 v2, 0x0

    aput p2, v1, v2

    const-string p2, "translationY"

    .line 150
    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v3, 0x96

    .line 151
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 153
    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 155
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setGraduationView(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    return-void
.end method

.method public setIsEnable(Z)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz v0, :cond_1

    .line 381
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEnable:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 383
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->setEnable(Z)V

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_normal:I

    .line 385
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 384
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->setEnable(Z)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_disable:I

    .line 389
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 388
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    .line 391
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    const p1, 0x3f19999a    # 0.6f

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    :cond_1
    return-void
.end method

.method public setItemClickCallBack(Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    return-void
.end method

.method public setPopupOptionsControl(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    const/4 p1, 0x0

    .line 353
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mIsSeekBar:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEnable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 367
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_highlight:I

    .line 368
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 367
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    goto :goto_0

    .line 371
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_wheel_view_text_color_normal:I

    .line 372
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 371
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateTitleColor(I)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    const p1, 0x3f19999a    # 0.6f

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateSubTitleAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    return-void
.end method

.method public setupEntryView()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-nez v0, :cond_0

    .line 292
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mEntryView is null in setupEntryView."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 295
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    check-cast v0, Landroid/view/View;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    new-instance v2, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->updateEntryView(Ljava/lang/String;Z)V

    return-void
.end method

.method protected shouldShown()Z
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    .line 67
    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unInit()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 438
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 440
    :cond_1
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    return-void
.end method

.method public updateEntryView(Ljava/lang/String;Z)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mGraduationView:Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 261
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->updateValue(Ljava/lang/String;)V

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->shouldShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    .line 267
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_3

    const/16 p1, 0x8

    .line 271
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_0

    .line 398
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
