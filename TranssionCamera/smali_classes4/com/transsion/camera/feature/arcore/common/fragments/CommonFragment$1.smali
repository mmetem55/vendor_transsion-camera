.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$1;
.super Ljava/util/ArrayList;
.source "CommonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 2

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_original:I

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_origin_audio:I

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_male:I

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_male_voice:I

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_female:I

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_female_voice:I

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_echo:I

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_echo_voice:I

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_cartoon:I

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_cartoon_voice:I

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_monster:I

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_monster_voice:I

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
