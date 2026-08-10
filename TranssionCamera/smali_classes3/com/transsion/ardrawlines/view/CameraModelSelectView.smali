.class public Lcom/transsion/ardrawlines/view/CameraModelSelectView;
.super Landroid/widget/LinearLayout;
.source "CameraModelSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;
    }
.end annotation


# static fields
.field private static final ItemScale:F

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private AnimationRunningCount:I

.field private AnimitionDurationTime:I

.field private currentItemCopy:I

.field private isLibraryViewVisible:Z

.field private isVisible:Z

.field private mAnimationRunning:Z

.field private mCurrentItem:I

.field private mRequstLayout:Z

.field private names:[Ljava/lang/String;

.field scroolToRight:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetAnimationRunningCount(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentItemCopy(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->currentItemCopy:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputAnimationRunningCount(Lcom/transsion/ardrawlines/view/CameraModelSelectView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimationRunning(Lcom/transsion/ardrawlines/view/CameraModelSelectView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentItem(Lcom/transsion/ardrawlines/view/CameraModelSelectView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequstLayout(Lcom/transsion/ardrawlines/view/CameraModelSelectView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextColor(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextColor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTextWeight(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextWeight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scroolToRight:Z

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/ardrawlines/R$array;->cameraModel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->names:[Ljava/lang/String;

    .line 26
    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    .line 27
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isLibraryViewVisible:Z

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    const/16 v1, 0xc8

    .line 30
    iput v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimitionDurationTime:I

    .line 31
    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    .line 32
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    .line 33
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scroolToRight:Z

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$array;->cameraModel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->names:[Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    .line 27
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isLibraryViewVisible:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    const/16 v0, 0xc8

    .line 30
    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimitionDurationTime:I

    .line 31
    iput p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    .line 32
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    .line 33
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scroolToRight:Z

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/ardrawlines/R$array;->cameraModel:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->names:[Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    .line 27
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isLibraryViewVisible:Z

    const/4 p3, 0x1

    .line 28
    iput-boolean p3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    const/16 p3, 0xc8

    .line 30
    iput p3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimitionDurationTime:I

    .line 31
    iput p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    .line 32
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    .line 33
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scroolToRight:Z

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/ardrawlines/R$array;->cameraModel:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->names:[Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    .line 27
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isLibraryViewVisible:Z

    const/4 p3, 0x1

    .line 28
    iput-boolean p3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    const/16 p3, 0xc8

    .line 30
    iput p3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimitionDurationTime:I

    .line 31
    iput p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    .line 32
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    .line 33
    iput-boolean p2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private clearShader(Landroid/widget/TextView;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private hideAllTextColor()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8

    .line 57
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 58
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->names:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 59
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 61
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 62
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, p1

    float-to-int v4, v4

    .line 64
    invoke-virtual {v5, v4, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v4, 0x40800000    # 4.0f

    .line 65
    sget v6, Lcom/transsion/ardrawlines/R$color;->shadow_gray:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v7, v7, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 66
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {p0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextWeight()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setGradient(Landroid/widget/TextView;[I)V
    .locals 8

    const/4 p0, 0x3

    new-array v6, p0, [F

    .line 183
    fill-array-data v6, :array_0

    .line 184
    new-instance p0, Landroid/graphics/LinearGradient;

    .line 185
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v0, v1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 187
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 188
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateTextColor()V
    .locals 7

    .line 137
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->hideAllTextColor()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->clearShader(Landroid/widget/TextView;)V

    .line 143
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/ardrawlines/R$color;->select_color:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v4, Lcom/transsion/ardrawlines/R$color;->shadow_gray:I

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v4, Lcom/transsion/ardrawlines/R$color;->shadow_gray:I

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 151
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 153
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    const/4 v2, 0x3

    if-le v0, v1, :cond_2

    new-array v1, v2, [I

    .line 154
    fill-array-data v1, :array_0

    .line 155
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->setGradient(Landroid/widget/TextView;[I)V

    goto :goto_1

    :cond_2
    new-array v1, v2, [I

    .line 157
    fill-array-data v1, :array_1

    .line 158
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->setGradient(Landroid/widget/TextView;[I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method private updateTextWeight()V
    .locals 3

    .line 166
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 167
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 168
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 122
    invoke-virtual {p0, p1, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateChildItem(Landroid/graphics/Canvas;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentItem()I
    .locals 0

    .line 240
    iget p0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 90
    iget p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    move p3, p1

    .line 93
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_4

    .line 94
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 95
    iget p5, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-ne p3, p5, :cond_0

    .line 96
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_0
    sub-int p5, p3, p5

    .line 99
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-float p5, p5

    const/4 v0, 0x0

    mul-float/2addr p5, v0

    .line 100
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr v1, p5

    float-to-int p5, v1

    .line 101
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-ge p3, v1, :cond_1

    add-int/lit8 v1, p3, 0x1

    .line 102
    :goto_1
    iget v2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-ge v1, v2, :cond_3

    .line 103
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p3, -0x1

    .line 107
    :goto_2
    iget v2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-le v1, v2, :cond_2

    .line 108
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr p5, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    neg-int p5, p5

    .line 113
    :cond_3
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr v0, p5

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p2

    add-int/2addr v2, p5

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p4, v0, v1, v2, p5}, Landroid/view/View;->layout(IIII)V

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 115
    :cond_4
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    return-void
.end method

.method public scrollLeft()V
    .locals 3

    .line 215
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 217
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    if-eqz v0, :cond_2

    .line 218
    iget v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    if-ge v0, v2, :cond_1

    .line 219
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->currentItemCopy:I

    add-int/2addr v0, v2

    .line 220
    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scroolToRight:Z

    :cond_1
    return-void

    .line 225
    :cond_2
    iget v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    add-int/lit8 v1, v0, -0x1

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->startTraAnimation(II)V

    .line 227
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextColor()V

    :cond_3
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .line 199
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mRequstLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-lez v0, :cond_3

    .line 201
    iget-boolean v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 202
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    if-ge v1, v2, :cond_1

    sub-int/2addr v0, v2

    .line 203
    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->currentItemCopy:I

    add-int/2addr v1, v2

    .line 204
    iput v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimationRunningCount:I

    .line 205
    iput-boolean v2, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->scroolToRight:Z

    :cond_1
    return-void

    :cond_2
    sub-int/2addr v0, v2

    .line 209
    iput v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    add-int/lit8 v1, v0, 0x1

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->startTraAnimation(II)V

    .line 211
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextColor()V

    :cond_3
    return-void
.end method

.method public scrollToItem(I)V
    .locals 1

    .line 232
    iget v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-eq p1, v0, :cond_0

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->startTraAnimation(II)V

    .line 234
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextColor()V

    .line 235
    iput p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    :cond_0
    return-void
.end method

.method public setIndexTextColor(Z)V
    .locals 5

    const/4 p1, 0x0

    move v0, p1

    .line 73
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/ardrawlines/R$color;->select_color:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    .line 83
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextColor()V

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    .line 292
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 294
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->isVisible:Z

    .line 295
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->hideAllTextColor()V

    .line 296
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public startTraAnimation(II)V
    .locals 10

    .line 244
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 246
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 247
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v0, v1, 0x2

    sub-int/2addr v3, v0

    int-to-float v0, v1

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_8

    .line 251
    div-int/lit8 v6, v0, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v5, p1, :cond_2

    neg-int v6, v6

    move v8, v5

    :goto_1
    if-ge v8, p1, :cond_6

    if-ne v5, v8, :cond_0

    .line 257
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    div-float/2addr v9, v7

    goto :goto_2

    .line 259
    :cond_0
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    :goto_2
    float-to-int v9, v9

    if-ge p1, p2, :cond_1

    sub-int/2addr v6, v9

    goto :goto_3

    :cond_1
    add-int/2addr v6, v9

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-le v5, p1, :cond_5

    add-int/lit8 v8, p1, 0x1

    :goto_4
    if-gt v8, v5, :cond_6

    if-ne v8, v5, :cond_3

    .line 267
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    div-float/2addr v9, v7

    goto :goto_5

    .line 269
    :cond_3
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    :goto_5
    float-to-int v9, v9

    if-ge p1, p2, :cond_4

    sub-int/2addr v6, v9

    goto :goto_6

    :cond_4
    add-int/2addr v6, v9

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v6, v4

    :cond_6
    add-int/2addr v6, v3

    .line 277
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v6

    invoke-direct {v7, v1, v6, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 278
    iget v6, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->AnimitionDurationTime:I

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v6, 0x1

    .line 279
    invoke-virtual {v7, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    if-ne v5, p1, :cond_7

    .line 280
    new-instance v8, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;

    invoke-direct {v8, p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView$myAnimationListener;-><init>(Lcom/transsion/ardrawlines/view/CameraModelSelectView;)V

    invoke-virtual {v7, v8}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 281
    :cond_7
    iput-boolean v6, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mAnimationRunning:Z

    .line 282
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public updateChildItem(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 127
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    iget v1, p0, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->mCurrentItem:I

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v1, 0x0

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 132
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 133
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/CameraModelSelectView;->updateTextColor()V

    return-void
.end method
