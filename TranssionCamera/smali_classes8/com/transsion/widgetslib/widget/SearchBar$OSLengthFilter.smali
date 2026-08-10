.class Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OSLengthFilter"
.end annotation


# instance fields
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mTextNum:I

.field private mTipInputMax:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 857
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    if-eqz p1, :cond_0

    .line 859
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 860
    iput p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTextNum:I

    .line 861
    iput-object p3, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTipInputMax:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 868
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p4, :cond_0

    return-object p1

    .line 872
    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    .line 874
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    if-eqz p3, :cond_3

    .line 875
    iget p4, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTextNum:I

    if-lt p2, p4, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 877
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTipInputMax:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 880
    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez p2, :cond_2

    .line 881
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTipInputMax:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-static {p3, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mToast:Landroid/widget/Toast;

    .line 883
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-object p1
.end method
