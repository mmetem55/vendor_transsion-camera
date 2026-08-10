.class Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;
.super Landroid/os/Handler;
.source "ProfessionalMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mProfessionalModeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;->mProfessionalModeRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;->mProfessionalModeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    if-nez p0, :cond_0

    .line 95
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "professionalMode has been gc"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 104
    sget-object p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->sendProParameterPostRestriction()V

    :goto_0
    return-void
.end method
