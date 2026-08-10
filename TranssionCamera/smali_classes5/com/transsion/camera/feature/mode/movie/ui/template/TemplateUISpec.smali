.class public Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;
.super Ljava/lang/Object;
.source "TemplateUISpec.java"


# instance fields
.field public final mBottomGradientHeight:I

.field public final mBottomHeightEnd:I

.field public final mBottomHeightStart:I

.field public final mClsTopMarginHorizontal:I

.field public final mClsTopMarginVertical:I

.field public final mDividerHorizontal:I

.field public final mDividerVertical:I

.field public final mLeftGradientWidth:I

.field public final mModePickerHeight:I

.field public final mRightGradientWidth:I

.field public final mScreenSize:Landroid/util/Size;

.field public final mSelectIndicatorHeight:I

.field public final mSelectIndicatorTopMargin:I

.field public final mTopBarHeight:I

.field public final mTopGradientHeight:I

.field public final mTopHeightEnd:I

.field public final mTopHeightStart:I

.field public final mTransUpEnd:I

.field public final mTransUpStart:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 69
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopBarHeight:I

    .line 70
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mModePickerHeight:I

    .line 72
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->movie_template_select_divider_vertical:I

    .line 73
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mDividerVertical:I

    .line 75
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->movie_template_select_divider_horizontal:I

    .line 76
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mDividerHorizontal:I

    .line 78
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->movie_continue_last_shoot_top_margin_horizontal:I

    .line 79
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mClsTopMarginHorizontal:I

    .line 80
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->movie_continue_last_shoot_top_margin_vertical:I

    .line 81
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mClsTopMarginVertical:I

    .line 83
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->movie_select_indicator_height:I

    .line 84
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mSelectIndicatorHeight:I

    .line 85
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->movie_select_indicator_top_margin:I

    .line 86
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mSelectIndicatorTopMargin:I

    .line 88
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_item_entrance_translate_up_start:I

    .line 89
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTransUpStart:I

    .line 90
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_item_entrance_translate_up_end:I

    .line 91
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTransUpEnd:I

    .line 93
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_top_height_start:I

    .line 94
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopHeightStart:I

    .line 95
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_top_height_end:I

    .line 96
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopHeightEnd:I

    .line 98
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_bottom_height_start:I

    .line 99
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightStart:I

    .line 100
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_bottom_height_end:I

    .line 101
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightEnd:I

    .line 103
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_top_gradient_height:I

    .line 104
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopGradientHeight:I

    .line 105
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_bottom_gradient_height:I

    .line 106
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomGradientHeight:I

    .line 108
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_left_gradient_height:I

    .line 109
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mLeftGradientWidth:I

    .line 110
    sget p1, Lcom/transsion/camera/feature/movie/R$dimen;->template_shader_right_gradient_height:I

    .line 111
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mRightGradientWidth:I

    return-void
.end method
