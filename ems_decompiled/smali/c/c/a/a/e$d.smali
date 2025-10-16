.class public Lc/c/a/a/e$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Lc/c/a/a/e$b;

.field public c:Lc/c/a/a/e$c;

.field public d:Lc/c/a/a/e$c;


# direct methods
.method public constructor <init>(Lc/c/a/a/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/a/a/e$d;->a:I

    new-instance v0, Lc/c/a/a/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc/c/a/a/e$b;-><init>(Lc/c/a/a/e;Lc/c/a/a/e$a;)V

    iput-object v0, p0, Lc/c/a/a/e$d;->b:Lc/c/a/a/e$b;

    new-instance v0, Lc/c/a/a/e$c;

    invoke-direct {v0, p1, v1}, Lc/c/a/a/e$c;-><init>(Lc/c/a/a/e;Lc/c/a/a/e$a;)V

    iput-object v0, p0, Lc/c/a/a/e$d;->c:Lc/c/a/a/e$c;

    new-instance v0, Lc/c/a/a/e$c;

    invoke-direct {v0, p1, v1}, Lc/c/a/a/e$c;-><init>(Lc/c/a/a/e;Lc/c/a/a/e$a;)V

    iput-object v0, p0, Lc/c/a/a/e$d;->d:Lc/c/a/a/e$c;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RenderRange{page="

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/c/a/a/e$d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gridSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/e$d;->b:Lc/c/a/a/e$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leftTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/e$d;->c:Lc/c/a/a/e$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/e$d;->d:Lc/c/a/a/e$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
