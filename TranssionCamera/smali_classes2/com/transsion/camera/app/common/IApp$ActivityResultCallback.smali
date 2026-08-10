.class public abstract Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;
.super Ljava/lang/Object;
.source "IApp.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->mIntent:Landroid/content/Intent;

    .line 33
    iput p2, p0, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getRequestCode()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->mRequestCode:I

    return p0
.end method

.method public abstract onActivityResult(ILandroid/content/Intent;)V
.end method
