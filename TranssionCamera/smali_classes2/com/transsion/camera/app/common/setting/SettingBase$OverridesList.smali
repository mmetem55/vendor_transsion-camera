.class Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;
.super Ljava/lang/Object;
.source "SettingBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/SettingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverridesList"
.end annotation


# instance fields
.field private mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/setting/SettingBase;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->this$0:Lcom/transsion/camera/app/common/setting/SettingBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/SettingBase;Lcom/transsion/camera/app/common/setting/SettingBase$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;-><init>(Lcom/transsion/camera/app/common/setting/SettingBase;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;Ljava/lang/String;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->clearAll()V

    return-void
.end method

.method private clearAll()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private indexOf(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    .line 110
    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->headerKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V
    .locals 2

    .line 49
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->headerKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    .line 52
    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    iput-object v1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public get(I)Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    return-object p0
.end method

.method public getFirst()Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)I
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return p1
.end method

.method public size()I
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method
