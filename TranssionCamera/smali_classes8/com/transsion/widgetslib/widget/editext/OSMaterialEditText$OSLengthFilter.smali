.class Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "OSMaterialEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OSLengthFilter"
.end annotation


# instance fields
.field private mOSMaterialEditText:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;",
            ">;"
        }
    .end annotation
.end field

.field private mTextNum:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;I)V
    .locals 1

    .line 478
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    if-eqz p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;->mOSMaterialEditText:Ljava/lang/ref/WeakReference;

    .line 481
    iput p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;->mTextNum:I

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 488
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p4, :cond_0

    return-object p1

    .line 492
    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    .line 494
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;->mOSMaterialEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz p3, :cond_3

    .line 495
    iget p4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;->mTextNum:I

    if-lt p2, p4, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 496
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->access$100(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 497
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez p4, :cond_2

    .line 501
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->access$200(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p3, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;->mToast:Landroid/widget/Toast;

    .line 503
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$OSLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    nop

    :cond_3
    :goto_0
    return-object p1
.end method
