.class Lcom/transsion/camera/app/ui/SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/preference/BindViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/SettingFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SettingFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/SettingFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment$1;->this$0:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;Landroid/preference/Preference;)V
    .locals 0

    const p0, 0x7f09037c

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 68
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706b1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_0
    return-void
.end method
