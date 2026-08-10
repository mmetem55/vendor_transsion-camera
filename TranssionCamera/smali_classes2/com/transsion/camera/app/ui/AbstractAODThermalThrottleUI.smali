.class public abstract Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;
.super Ljava/lang/Object;
.source "AbstractAODThermalThrottleUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mThermalThrottleOperator:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;

.field private mWarningKnown:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$KhiuBYID4AZeTSBIMvPxqxFNzIQ(Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$setupView$0(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;->mThermalThrottleOperator:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;->performExit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c002b

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0904a2

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;->mWarningKnown:Landroid/widget/TextView;

    return-object p1
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setThermalThrottleOperator(Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;->mThermalThrottleOperator:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;

    return-void
.end method

.method public setupView()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;->mWarningKnown:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractAODThermalThrottleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
