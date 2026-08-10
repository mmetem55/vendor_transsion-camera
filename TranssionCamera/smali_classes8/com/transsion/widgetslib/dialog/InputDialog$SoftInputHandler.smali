.class Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;
.super Landroid/os/Handler;
.source "InputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftInputHandler"
.end annotation


# instance fields
.field private mEditTextWR:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 532
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 533
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;->mEditTextWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getEditTextWR()Ljava/lang/ref/WeakReference;
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;->mEditTextWR:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
