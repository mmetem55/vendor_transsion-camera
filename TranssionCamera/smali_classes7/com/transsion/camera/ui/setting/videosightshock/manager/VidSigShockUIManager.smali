.class public Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;
.super Ljava/lang/Object;
.source "VidSigShockUIManager.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field private mControlView:Landroid/widget/RelativeLayout;

.field private mCurrentSelectStyle:Ljava/lang/String;

.field public mEffectSwitch:Landroid/widget/LinearLayout;

.field private mEffectSwitchDot:Landroid/view/View;

.field private mEffectSwitchText:Landroid/widget/TextView;

.field public mFilterSwitch:Landroid/widget/LinearLayout;

.field private mFilterSwitchDot:Landroid/view/View;

.field private mFilterSwitchText:Landroid/widget/TextView;

.field public mFrameSwitch:Landroid/widget/LinearLayout;

.field private mFrameSwitchDot:Landroid/view/View;

.field private mFrameSwitchText:Landroid/widget/TextView;

.field private mMainSwitch:Landroid/widget/ImageView;

.field private mSelected:Z

.field private mStateList:Landroid/content/res/ColorStateList;

.field private mStateListBlack:Landroid/content/res/ColorStateList;

.field private mSupportCount:I

.field private mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

.field private mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

.field private mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

.field private final mVssSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mbSupportEffect:Z

.field private final mbSupportFilter:Z

.field private final mbSupportFrame:Z


# direct methods
.method public static synthetic $r8$lambda$-0kEmb3f15fNbE9Tj9pwAVBJcLU(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initViewListenerIfNeed$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-sOpXHqTKocIAnbwHqAOvjoMFeE(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$adjustControlView$5(IILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQ6NHv_w-5b-C770uUavhrDL9RE(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initViewListenerIfNeed$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_sU8X3_1wm3f8xyIYetJWG7eds(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initViewListenerIfNeed$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnO2_U_ggIiYWziqVsOwFn6NfJ8(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$adjustControlView$4(IILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wWxeV9Uaxjg441PUsSK2b07o9BI(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$adjustControlView$6(IILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zhb9ozuhHSy2O6onwRvKRxtf4QQ(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->lambda$initViewListenerIfNeed$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 56
    sput-object v1, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->PRESSED_STATE_SET:[I

    new-array v2, v0, [I

    const v4, 0x10100a1

    aput v4, v2, v3

    .line 57
    sput-object v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->SELECTED_STATE_SET:[I

    new-array v4, v0, [I

    aput v3, v4, v3

    .line 58
    sput-object v4, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->NORMAL_STATE_SET:[I

    const/4 v5, 0x3

    new-array v5, v5, [[I

    aput-object v1, v5, v3

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    .line 89
    sput-object v5, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->sStates:[[I

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 61
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 62
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string v0, "key_video_filter_style"

    .line 96
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "supportEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " supportFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 104
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_0
    if-eqz p2, :cond_1

    .line 107
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoEffectUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 108
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    :cond_1
    if-eqz p3, :cond_2

    .line 111
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    .line 112
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    .line 115
    :cond_2
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    .line 116
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    .line 117
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    return-void
.end method

.method private getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasNoEffectValueInStore()Z
    .locals 1

    const-string v0, "key_video_effect_style"

    .line 446
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private hasNoFilterValueInStore()Z
    .locals 1

    const-string v0, "key_video_filter_style"

    .line 442
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private hasNoFrameValueInStore()Z
    .locals 1

    const-string v0, "key_video_frame_style"

    .line 450
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private initTabColor(Landroid/view/View;)V
    .locals 9

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060446

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060448

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f060449

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 249
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->sStates:[[I

    const/4 v4, 0x3

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v0, v5, v7

    const/4 v8, 0x2

    aput v1, v5, v8

    invoke-direct {v2, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    .line 250
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v4, [I

    aput v0, v2, v6

    aput v0, v2, v7

    aput p1, v2, v8

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 9

    .line 165
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904e9

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    .line 166
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904ea

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    .line 167
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904eb

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060447

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 170
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_effect_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 171
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_1

    .line 176
    invoke-direct {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 177
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_1
    return-void
.end method

.method private initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 9

    .line 149
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904ec

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    .line 150
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904ed

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    .line 151
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904ee

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060447

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 153
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_filter_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 154
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_1

    .line 159
    invoke-direct {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 160
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_1
    return-void
.end method

.method private initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 9

    .line 182
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904ef

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    .line 183
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904f0

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    .line 184
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904f1

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060447

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 187
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    const-string p5, "key_video_frame_style"

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 188
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    if-nez p1, :cond_1

    .line 193
    invoke-direct {p0, p5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    .line 194
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSelected:Z

    :cond_1
    return-void
.end method

.method private initViewListenerIfNeed()V
    .locals 4

    .line 199
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 234
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 239
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$adjustControlView$4(IILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 489
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 490
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    :cond_1
    add-int/2addr v0, p2

    .line 493
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, p2

    .line 494
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p2

    .line 495
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 496
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 497
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$adjustControlView$5(IILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 504
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 505
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 506
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    :cond_1
    add-int/2addr v0, p2

    .line 509
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, p2

    .line 510
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, p2

    .line 511
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 512
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 513
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$adjustControlView$6(IILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    .line 520
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 521
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, p2

    .line 525
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, p2

    .line 526
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p2

    .line 527
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 528
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 529
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$0(Landroid/view/View;)V
    .locals 4

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 205
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "off"

    const-string v3, "0"

    if-eqz p1, :cond_0

    const-string p1, "key_video_filter_style"

    .line 206
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    const-string p1, "key_video_filter"

    .line 207
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz p1, :cond_1

    const-string p1, "key_video_effect_style"

    .line 213
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    const-string p1, "key_video_effect"

    .line 214
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz p1, :cond_2

    const-string p1, "key_video_frame_style"

    .line 220
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    const-string p1, "key_video_frame"

    .line 221
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$1(Landroid/view/View;)V
    .locals 0

    const-string p1, "key_video_filter_style"

    .line 230
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$2(Landroid/view/View;)V
    .locals 0

    const-string p1, "key_video_effect_style"

    .line 235
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initViewListenerIfNeed$3(Landroid/view/View;)V
    .locals 0

    const-string p1, "key_video_frame_style"

    .line 240
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method private selectFilterTab(Ljava/lang/String;)V
    .locals 6

    const-string v0, "key_video_filter_style"

    .line 400
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_video_effect_style"

    .line 401
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "key_video_frame_style"

    .line 402
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 404
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v5, :cond_1

    .line 405
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 406
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 407
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v2, :cond_3

    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v1, :cond_5

    .line 417
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getRecyclerViewRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private setVideoSightMode(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateMainSwitchStateIfNeed()V

    .line 396
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->selectFilterTab(Ljava/lang/String;)V

    return-void
.end method

.method private updateMainSwitchStateIfNeed()V
    .locals 4

    .line 424
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_2

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-nez v3, :cond_4

    .line 431
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_6

    .line 434
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 436
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v3, :cond_8

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_8
    return-void
.end method

.method private updateTabDotState(ZLjava/lang/String;)V
    .locals 7

    .line 344
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "key_video_filter_style"

    const-string v4, "key_video_frame_style"

    const-string v5, "key_video_effect_style"

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v6

    :cond_3
    :goto_1
    const/4 p2, 0x4

    packed-switch v1, :pswitch_data_0

    goto :goto_5

    .line 349
    :pswitch_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_7

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v6, p2

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_5

    .line 363
    :pswitch_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_7

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v6, p2

    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_5

    .line 356
    :pswitch_2
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_7

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v6, p2

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f42cb59 -> :sswitch_2
        0x9a484bb -> :sswitch_1
        0x46cdfd4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public adjustControlView(II)V
    .locals 3

    .line 478
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 483
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 500
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitch:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 516
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v1, :cond_3

    .line 517
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitch:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;IILandroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 10

    const v0, 0x7f0c01d7

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0904f9

    .line 122
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz v2, :cond_0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 125
    invoke-direct/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initVideoFilterView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 127
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/16 v9, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0904ec

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz v2, :cond_2

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 130
    invoke-direct/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initVideoEffectView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 132
    :cond_2
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0904e9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    if-eqz v2, :cond_4

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 135
    invoke-direct/range {v2 .. v8}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initVideoFrameView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    .line 137
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mControlView:Landroid/widget/RelativeLayout;

    const p2, 0x7f0904ef

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const p1, 0x7f0904f8

    .line 139
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    .line 140
    iget p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mSupportCount:I

    if-ne p2, v1, :cond_6

    .line 141
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_6
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initTabColor(Landroid/view/View;)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initViewListenerIfNeed()V

    return-void
.end method

.method public onInitialFinished(ZLjava/lang/String;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    return-void
.end method

.method public onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .locals 2

    .line 339
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateMainSwitchStateIfNeed()V

    .line 340
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mItemStyle:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public recoverSettingValueAndUI()V
    .locals 7

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x1

    const-string v2, "on"

    const-string v3, "off"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFilterValueInStore()Z

    move-result v0

    const-string v5, "key_video_filter_style"

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v4}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 304
    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "key_video_filter"

    .line 305
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    .line 311
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoFrameValueInStore()Z

    move-result v0

    const-string v5, "key_video_frame_style"

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v4}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 314
    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "key_video_frame"

    .line 315
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 316
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    .line 321
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_5

    .line 322
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->hasNoEffectValueInStore()Z

    move-result v0

    const-string v5, "key_video_effect_style"

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v4}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 324
    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "key_video_effect"

    .line 325
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 326
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->getSettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateTabDotState(ZLjava/lang/String;)V

    .line 330
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setVideoSightMode(Ljava/lang/String;)V

    return-void
.end method

.method public resetUIState(Ljava/lang/String;)V
    .locals 2

    .line 377
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetUIState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "filter_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    const-string v0, "key_video_filter_style"

    .line 381
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mCurrentSelectStyle:Ljava/lang/String;

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_1

    const-string v0, "effect_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    .line 388
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_2

    const-string v0, "frame_default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->recoverPanelToDefault(Z)V

    :cond_2
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;",
            "Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;",
            ")V"
        }
    .end annotation

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVssSettingMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->setEnable(Z)V

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->setEnable(Z)V

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->setEnable(Z)V

    :cond_2
    return-void
.end method

.method public updateIndicatorRingScreenLight(Z)V
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    const v1, 0x7f080cab

    const v2, 0x7f080caa

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateRingScreenLight(Z)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFilterSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateRingScreenLight(Z)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mEffectSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 267
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateRingScreenLight(Z)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchText:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateListBlack:Landroid/content/res/ColorStateList;

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mStateList:Landroid/content/res/ColorStateList;

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mFrameSwitchDot:Landroid/view/View;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mMainSwitch:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const p1, 0x7f080ca8

    goto :goto_6

    :cond_9
    const p1, 0x7f080ca7

    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updateRecyclerViewScrollState(I)V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFilter:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFilterUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->updateRecyclerViewScrollState(I)V

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportEffect:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoEffectUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->updateRecyclerViewScrollState(I)V

    .line 295
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mbSupportFrame:Z

    if-eqz v0, :cond_2

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->mVideoFrameUI:Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;->updateRecyclerViewScrollState(I)V

    :cond_2
    return-void
.end method
