.class public Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
.super Ljava/lang/Object;
.source "SwipeMenuItem.java"


# static fields
.field public static final MENUITEMTYPE_ICON:I = 0x1

.field public static final MENUITEMTYPE_TEXT:I

.field private static cacheIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICON_ITEM_WIDTH:I

.field private final ICON_ITEM_WIDTH_HIOS:I

.field private height:I

.field private iconItemWidth:I

.field private isHios:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCircleBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mResId:I

.field private position:I

.field private textAppearance:I

.field private textItemWidth:I

.field private textTypeface:Landroid/graphics/Typeface;

.field private title:Ljava/lang/String;

.field private titleColor:I

.field private titleSize:I

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 46
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    const/16 v0, 0x40

    .line 49
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    .line 50
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->ICON_ITEM_WIDTH:I

    const/16 v0, 0x36

    .line 51
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->ICON_ITEM_WIDTH_HIOS:I

    const/16 v0, 0x52

    .line 52
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    .line 67
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 46
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    const/16 v0, 0x40

    .line 49
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    .line 50
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->ICON_ITEM_WIDTH:I

    const/16 v0, 0x36

    .line 51
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->ICON_ITEM_WIDTH_HIOS:I

    const/16 v0, 0x52

    .line 52
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    .line 71
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    .line 72
    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->position:I

    const-string p1, "#FFFFFF"

    .line 73
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleColor:I

    .line 74
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    .line 75
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->sp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    return-void
.end method

.method private static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 126
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    sget-object p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static release()V
    .locals 3

    .line 239
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 243
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 247
    :cond_2
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 248
    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    return-void
.end method

.method public static resetCacheIcon(Landroid/content/Context;)V
    .locals 2

    .line 252
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCircleBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mCircleBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 222
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    return p0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 146
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->position:I

    return p0
.end method

.method public getResId()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTextAppearance()I
    .locals 0

    .line 194
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textAppearance:I

    return p0
.end method

.method public getTextSize()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    return p0
.end method

.method public getTextTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public getTitleColor()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleColor:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mIcon:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getWeight()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    return p0
.end method

.method public getWidth()I
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    :goto_0
    return p0
.end method

.method public setBackground(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 1

    .line 101
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundColorResource(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setCircleBackground(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mCircleBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCircleBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 1

    .line 106
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mCircleBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCircleBackgroundColorResource(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setCircleBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setHeight(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 217
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    return-object p0
.end method

.method public setImage(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 2

    .line 119
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    .line 120
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setImage(Landroid/graphics/Bitmap;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setImage(Landroid/graphics/Bitmap;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setImage(Landroid/graphics/Bitmap;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIsHios(Z)V
    .locals 1

    .line 261
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->isHios:Z

    .line 262
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/16 p1, 0x36

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    :goto_0
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->position:I

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    return-void
.end method

.method public setTextAppearance(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 189
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textAppearance:I

    return-object p0
.end method

.method public setTextColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 171
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleColor:I

    return-object p0
.end method

.method public setTextColorResource(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setTextColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setTextSize(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 180
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    return-object p0
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setWeight(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 226
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .locals 0

    .line 207
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    .line 208
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    return-object p0
.end method
