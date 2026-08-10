.class public Lcom/transsion/camera/app/ui/ModePickerUI;
.super Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.source "ModePickerUI.java"


# instance fields
.field private mCurrentModeCancel:Landroid/widget/ImageView;

.field private final mCurrentModeColor:I

.field private final mCurrentModeColorBlack:I

.field private mCurrentModeName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 42
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p4, 0x7f060064

    invoke-virtual {p1, p4, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeColor:I

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x7f060065

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeColorBlack:I

    return-void
.end method


# virtual methods
.method protected getTabAnimationDuration()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method protected getTabAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 62
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090108

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeName:Landroid/widget/TextView;

    const p2, 0x7f090107

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI;->mCurrentModeCancel:Landroid/widget/ImageView;

    return-object p1
.end method

.method protected ringScreenLightUpdateUI()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->ringScreenLightUpdateUI()V

    return-void
.end method
