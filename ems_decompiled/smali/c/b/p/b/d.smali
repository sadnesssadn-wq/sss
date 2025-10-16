.class public Lc/b/p/b/d;
.super Lcom/emsportal/base/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/p/b/d$a;,
        Lc/b/p/b/d$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lc/b/p/b/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "X1"

    const-string v1, "X2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc/b/p/b/d;->b:Ljava/util/List;

    const-string v0, "999"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc/b/p/b/d;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/p/e/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/emsportal/base/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0b007e

    return v0
.end method

.method public b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 1

    new-instance v0, Lc/b/p/b/d$b;

    invoke-direct {v0, p0, p1}, Lc/b/p/b/d$b;-><init>(Lc/b/p/b/d;Landroid/view/View;)V

    return-object v0
.end method
