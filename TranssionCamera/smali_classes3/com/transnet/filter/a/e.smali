.class public final Lcom/transnet/filter/a/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/transnet/filter/a/e;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    :cond_1
    return v0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/transnet/filter/a/e;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0

    :cond_1
    return v0
.end method
