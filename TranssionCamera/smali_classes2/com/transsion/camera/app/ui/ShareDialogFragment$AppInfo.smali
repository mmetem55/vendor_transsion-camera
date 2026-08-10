.class Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;
.super Ljava/lang/Object;
.source "ShareDialogFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private launcherName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private score:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->launcherName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->score:F

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)I
    .locals 3

    .line 121
    iget v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->score:F

    iget v1, p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->score:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->appName:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sub-float/2addr v0, v1

    float-to-int p0, v0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 80
    check-cast p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->compareTo(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)I

    move-result p0

    return p0
.end method

.method public getLauncherName()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->launcherName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method
