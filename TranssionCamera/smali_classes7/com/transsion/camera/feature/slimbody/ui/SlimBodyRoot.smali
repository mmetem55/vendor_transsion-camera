.class public Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
.super Landroid/widget/RelativeLayout;
.source "SlimBodyRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;
    }
.end annotation


# static fields
.field public static final BACK_TO_MODE:I = 0x2

.field public static final BACK_TO_NONE:I = 0x0

.field public static final BACK_TO_PRESET:I = 0x1

.field public static final STATE_CLOSE:I = 0x5

.field public static final STATE_OPEN:I = 0x4

.field public static final STATE_TO_FEATURE:I = 0x3

.field public static final STATE_TO_PRESET:I = 0x1

.field public static final STATE_TO_SEEKBAR:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentEntryValue:Ljava/lang/String;

.field private mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

.field private mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

.field private mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    return-void
.end method

.method private initFeatureLayout()V
    .locals 1

    .line 57
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->feature_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    const/4 p0, 0x0

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method private setProcessToDataInfo(Lcom/transsion/camera/feature/slimbody/data/SBItemData;I)V
    .locals 0

    .line 68
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistUpper:I

    goto :goto_0

    .line 97
    :pswitch_1
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->armSlim:I

    goto :goto_0

    .line 94
    :pswitch_2
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bellySlim:I

    goto :goto_0

    .line 91
    :pswitch_3
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->chestPlump:I

    goto :goto_0

    .line 88
    :pswitch_4
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    goto :goto_0

    .line 85
    :pswitch_5
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    goto :goto_0

    .line 82
    :pswitch_6
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    goto :goto_0

    .line 79
    :pswitch_7
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    goto :goto_0

    .line 76
    :pswitch_8
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    goto :goto_0

    .line 73
    :pswitch_9
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    goto :goto_0

    .line 70
    :pswitch_a
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSettingData()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->updateSettingData(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyProgressChanged(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setProcessToDataInfo(Lcom/transsion/camera/feature/slimbody/data/SBItemData;I)V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public notifyValueChangedToUI(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->updateSettingData()V

    :cond_0
    return-void
.end method

.method public onBackPressed()I
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 136
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->initFeatureLayout()V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 115
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->updateSettingData()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->featureScrollOut()V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->unInit()V

    return-void
.end method
