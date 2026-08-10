.class public Lcom/transsion/widgetslib/dialog/OSLoadingDialog;
.super Landroid/app/Dialog;
.source "OSLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
    }
.end annotation


# static fields
.field private static mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/transsion/widgetslib/dialog/OSLoadingDialog$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/view/OSLoadingView;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    .line 16
    sput-object p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 29
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 30
    sget-object p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    const/4 p0, 0x0

    .line 32
    sput-object p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    :cond_0
    return-void
.end method
