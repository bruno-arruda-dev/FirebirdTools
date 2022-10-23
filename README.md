  Na empresa onde trabalho, Integra Engenharia de Sistemas, utilizamos duas versões do banco de dados Firebird: 2.5 e 3.0.
  
  Cada membro da minha equipe precisa, o tempo todo, ficar trocando a versão do Firebird para conseguir executar testes nos bancos de dados dos clientes, o que dá um certo trabalho e acaba sendo uma tarefa bastante repetitiva.
  
  Como forma de exercitar um pouquinho a lógica de programação, desenvolvi esse BATCH simples que nomeei como "FirebirdTools", o mesmo simplesmente detecta a versão atualmente instalada, sugere a desinstalação e permite instalar qualquer uma das duas versões que utilizamos.
  
   Acredito que essa ferramenta poupará muito tempo dos meus colegas e o meu, ao automatizar processos de desinstalação e instalação.
   
   Vale ressaltar que existe uma maneira funcional para instalar os dois Firebirds simultaneamente e depois ficar trocando apenas a "GDS32.DLL", mas eu mesmo sofro muito com falhas nesse mecanismo já existente, pois ele nem sempre funciona corretamente. Além do mais, ele necessita que seja configurada uma variável de ambiente.
   
   Meu aplicativo não necessita nenhuma configuração, basta descompactar e executar o .bat como administrador.
   
   Espero que seja útil :)

<div align=center>
<img src='https://user-images.githubusercontent.com/86083291/197367052-45e00f34-dc10-43fc-aec6-b4c6832c1f10.png'></img>
<img src='https://user-images.githubusercontent.com/86083291/197367053-38c58273-b20c-49bb-b9a2-c4012232d486.png'></img>
<img src='https://user-images.githubusercontent.com/86083291/197367054-0cb938b1-d158-4068-9c58-b71e7f4abd5d.png'></img>
</div>
