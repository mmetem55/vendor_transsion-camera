.class public Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;
.super Ljava/lang/Object;
.source "ProfessionalGraduationView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;
.implements Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private creatGraduationViewData()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    array-length v2, v0

    if-nez v2, :cond_1

    array-length v2, v1

    if-nez v2, :cond_1

    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setInteractiveListener(Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;)V

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V

    .line 102
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    array-length v3, v0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorMoveCount(I)V

    .line 103
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setPauseIndependentIndex(I)V

    .line 104
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_exposure_time"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 105
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_iso"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 106
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_manual_white_balance"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_manual_focus"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 115
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setPauseIndependentIndex(I)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setIndependentCursorIndexList(Ljava/util/List;)V

    goto :goto_1

    .line 107
    :cond_4
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorTitleContents([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PROFESSIONAL:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setNeedAnimate(Z)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onInteractive(Z)V
    .locals 3

    .line 128
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractive touching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mStateChangeCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;->onActionDown()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;->onActionUp()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressChanged(IZ)V
    .locals 2

    .line 140
    sget-object p2, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingUISpec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    if-eqz p2, :cond_0

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p2

    .line 143
    array-length v0, p2

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 145
    aget-object p1, p2, p1

    .line 146
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;->onSeekBarValueChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setGraduationView(Lcom/transsion/camera/app/ui/widget/GraduationView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;)Z
    .locals 4

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIfNeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 62
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->creatGraduationViewData()V

    .line 64
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->updateValue(Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return v2
.end method

.method public updateValue(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 82
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method
