.class public Lc/b/p/b/d$b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/p/b/d$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/p/e/b;

.field public final synthetic b:Lc/b/p/b/d$b$a;


# direct methods
.method public constructor <init>(Lc/b/p/b/d$b$a;Lc/b/p/e/b;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/d$b$a$a;->b:Lc/b/p/b/d$b$a;

    iput-object p2, p0, Lc/b/p/b/d$b$a$a;->a:Lc/b/p/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lc/b/p/b/d$b$a$a;->a:Lc/b/p/e/b;

    invoke-virtual {v0}, Lc/b/p/e/b;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/p/b/d$b$a$a;->b:Lc/b/p/b/d$b$a;

    iget-object v1, v1, Lc/b/p/b/d$b$a;->d:Lc/b/p/b/d$b;

    .line 1
    sget v2, Lc/b/p/b/d$b;->k:I

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc/b/p/b/e;

    invoke-direct {v2, v1}, Lc/b/p/b/e;-><init>(Lc/b/p/b/d$b;)V

    .line 3
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://ws.ems.com.vn/api/v1/grab/cancel/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
