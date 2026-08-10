.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
.super Ljava/lang/Object;
.source "LetterSelectorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LetterSelectorConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dimenDP:Z

.field private final letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    .line 95
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    .line 96
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    return-void
.end method

.method static synthetic access$4102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    return p1
.end method

.method private dimenSize(I)I
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private dimenSpSize(I)I
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->spToPx(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private initAllLetters()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private initLettersSort()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v2, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    invoke-static {}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3400()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x5a

    if-le v1, v2, :cond_0

    :cond_3
    :goto_1
    move v2, v3

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_6

    .line 311
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 316
    :cond_5
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    :cond_7
    new-instance v0, Lcom/transsion/sort/SortUtil;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/sort/SortUtil;-><init>(Landroid/content/Context;)V

    .line 324
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/sort/SortUtil;->sortString(Ljava/util/List;)V

    .line 325
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\u2606"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 327
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public static spToPx(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public initConfig(Landroid/content/Context;)V
    .locals 6

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->letter_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->letter_bottom_padding:I

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 103
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_padding_curse:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_padding:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 101
    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorPadding(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 105
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 106
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 107
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$color;->letter_select_color:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorFontColor(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 109
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    .line 110
    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    sget-object v3, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_xos:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    .line 115
    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_itel:I

    .line 119
    :cond_3
    :goto_1
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorSelectedLetterColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 120
    sget v1, Lcom/transsion/widgetslib/R$drawable;->ic_touch_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    invoke-static {v1}, Lcom/transsion/widgetslib/util/ImageUtils;->convert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorLetterIndicatorBitmap(Landroid/graphics/Bitmap;II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 126
    sget v1, Lcom/transsion/widgetslib/R$dimen;->blade_touch_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setTouchFrameStart(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 127
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_letter_bubble_margin_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 128
    sget v1, Lcom/transsion/widgetslib/R$color;->os_letter_bubble_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorIndicatorColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 130
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_letter_star_bubble:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v5, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v3, v5}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 132
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_letter_star:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p1, v3}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 133
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/high16 p1, 0x41680000    # 14.5f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr p1, v0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-void
.end method

.method public isSelectorTouching()Z
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    return p0
.end method

.method public registerLetterSelectorListener(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    return-object p0
.end method

.method public requestSelectorInvalidate()Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-object p0
.end method

.method public requestSelectorLayout()Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-object p0
.end method

.method public setAlphabetAnimationDuration(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J

    return-object p0
.end method

.method public setBubbleHideDelayTime(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    move p1, v0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setSelectorAnimationInterpolator(Landroid/view/animation/Interpolator;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    if-nez p1, :cond_0

    .line 218
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    iput-object p1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setSelectorFontColor(II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->letter_select_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorFontColor(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    return-object p0
.end method

.method public setSelectorFontColor(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 188
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1, p3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 191
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setSelectorFontSize(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSpSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 175
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSpSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 176
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSpSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 177
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1200(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1200(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    return-object p0
.end method

.method public setSelectorIndicatorColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2200(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setSelectorIndicatorSize(II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setSelectorLetterIndicatorBitmap(Landroid/graphics/Bitmap;II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 0

    .line 263
    iget-object p3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p3, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 264
    iget-object p3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    invoke-static {p3, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 265
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public setSelectorLetterIndicatorMinDurationTime(J)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J

    return-object p0
.end method

.method public setSelectorLetterIndicatorStart(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setSelectorLetters([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorLettersAll([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    move-result-object p0

    return-object p0
.end method

.method public setSelectorLettersAll([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/List;)Ljava/util/List;

    .line 347
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 348
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setSelectorLettersSort([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorLettersAll([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    move-result-object p0

    return-object p0
.end method

.method public setSelectorPadding(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 143
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 144
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setSelectorSelectedLetter(Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectorSelectedLetterColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setSelectorSelectedLetters(Ljava/util/ArrayList;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 253
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-object p0
.end method

.method public setSelectorTopAndBottomClickableEnable(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public setTouchFrameStart(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-object p0
.end method

.method public setTouchIndicator(II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 0

    .line 236
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2200(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setTouchSlotEnable(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public setVerticalCentre(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public showSelector(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V

    return-object p0
.end method

.method public updateSelectorBottomPadding(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public updateSelectorTopPadding(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method
