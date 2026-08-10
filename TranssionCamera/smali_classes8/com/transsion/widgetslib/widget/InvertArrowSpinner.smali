.class public Lcom/transsion/widgetslib/widget/InvertArrowSpinner;
.super Landroid/widget/Spinner;
.source "InvertArrowSpinner.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "os_spinner"


# instance fields
.field private mLayoutListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRemoveAllGlobalLayoutListeners:Z

.field private mOnLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_spinner_background_material_blue_open:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->mOnLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->mNeedRemoveAllGlobalLayoutListeners:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->mLayoutListeners:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public performClick()Z
    .locals 7

    const-string v0, "os_spinner"

    .line 47
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_spinner_background_material_blue_close:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mOnGlobalLayoutListeners"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mData"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 59
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->mLayoutListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 62
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->mLayoutListeners:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v4, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->mOnLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 66
    :cond_0
    const-class v4, Landroid/widget/Spinner;

    const-string v5, "mPopup"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    instance-of v4, v3, Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_1

    .line 70
    check-cast v3, Landroid/widget/ListPopupWindow;

    .line 71
    new-instance v4, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;

    invoke-direct {v4, p0, v2}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;-><init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "At Spinere.java performClick() has a exception,  e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Spinner background drawable is not exist, performClick() e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public setNeedRemoveAllGlobalLayoutListeners(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->mNeedRemoveAllGlobalLayoutListeners:Z

    return-void
.end method
