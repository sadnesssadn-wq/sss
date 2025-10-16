.class public Lc/d/c/w/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/c/w/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/c/w/g;->a(Lc/d/c/x/a;)Lc/d/c/w/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/c/w/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/c/f;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lc/d/c/w/g;Lc/d/c/f;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p2, p0, Lc/d/c/w/g$a;->a:Lc/d/c/f;

    iput-object p3, p0, Lc/d/c/w/g$a;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/c/w/g$a;->a:Lc/d/c/f;

    iget-object v1, p0, Lc/d/c/w/g$a;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lc/d/c/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
